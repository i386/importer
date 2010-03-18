require 'helper'

class ImporterTest < Test::Unit::TestCase
  context "" do
    setup do
      @product = Factory(:product, :customid => "1", :name => "A pink ball", :description => "Round glass ball.", :price => 86)
      @import = Importer::Import.create
    end

    context "importing from an XML file" do
      setup do
        Product.import(fixture_file("products.xml"), :import => @import)
      end

      should_change("product's name", :from => "A pink ball", :to => "A black ball") { @product.reload.name }

      should_change("products count", :by => 1) { Product.count }
      should "correctly create new product" do
        product = Product.last

        assert_equal "A red hat", product.name
        assert_equal "Party hat.", product.description
        assert_equal 114, product.price
        assert_equal "2", product.customid
      end

      should_change("imported objects counts", :by => 3) { Importer::ImportedObject.count }

      should_change("import's workflow state", :to => "finished") { @import.reload.workflow_state }
    end

    context "when there is exception raised while importing from an XML file" do
      setup do
        begin
          InvalidProduct.import(fixture_file("products.xml"), :import => @import)
        rescue ::Exception => e
          @exception = e
        end
      end

      should_not_change("product's name") { @product.reload.name }
      should_not_change("products count") { InvalidProduct.count }
      should_not_change("imported objects count") { Importer::ImportedObject.count }
      should_not_change("import's workflow state") { @import.reload.workflow_state }
      should "propagate exception" do
        assert_equal "An error occured.", @exception.message
      end
    end
  end
end
