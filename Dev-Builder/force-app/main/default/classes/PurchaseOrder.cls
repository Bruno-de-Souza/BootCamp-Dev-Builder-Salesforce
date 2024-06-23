/**
 * @author Bruno Moreira
 */
public class PurchaseOrder {

    Account account;

    String purchaseOrderNumber;

    Date needByDate;

    Address billingAdress;

    Address shippingAdress;

    List<Item> items;

    public PurchaseOrder() {

        this.items = new List<Item> ();
        this.needByDate = Date.today().addDays(7);
        this.purchaseOrderNumber = '1234567890';

    }

    public PurchaseOrder(String purchaseOrderNumber
                        , Account account
                        , Date needByDate) {

        this();
        this.purchaseOrderNumber = purchaseOrderNumber;
        this.account = account;
        this.needByDate = needByDate;

    }

    public PurchaseOrder(String purchaseOrderNumber
                        , Account account
                        , Date needByDate
                        , Address billingAdress) {

        this(purchaseOrderNumber, account, needByDate);
        this.billingAdress = billingAdress;

    }

    public void addItem(Item item) {

        this.items.add(item);

    }

    public class Address {

        public String street;
        public String streetNumber;
        public String additionalNumber;
        public String city;
        public String zipCode;
        public String state; 

    }

    public class Item {

        public String Id;
        public String productCode;
        public String description;
        public String PricebookEntryId;
        public Decimal quantity;
        public Decimal price;

        public Item withId(String Id) {
            
            this.Id = Id;

            return this;

        }

        public Item withProductCode(String productCode) {

            this.productCode = productCode;

            return this;

        }

        public Item withDescription(String description) {

            this.description = description;

            return this;

        }

        public Item withPriceBookEntryId(String PriceBookEntryId) {

            this.PricebookEntryId = PriceBookEntryId;

            return this;

        }

        public Item withQuantity(Decimal quantity) {

            this.quantity = quantity;

            return this;

        }

        public Item withPrice(Decimal price) {

            this.price = price;

            return this;

        }

    }

}