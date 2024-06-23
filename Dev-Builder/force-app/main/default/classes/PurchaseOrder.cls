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

    }

    public PurchaseOrder(String purchaseOrderNumber
                        , Account account) {

        this();

        this.account = account;
        this.purchaseOrderNumber = purchaseOrderNumber;

    }

    public PurchaseOrder(String purchaseOrderNumber
                        , Account account
                        , Address billingAdress) {

        this(purchaseOrderNumber, account);
        this.billingAdress = billingAdress;

    }

    public PurchaseOrder(String purchaseOrderNumber
                       , Account account
                       , Address billingAdress
                       , Address shippingAdress) {

        this(purchaseOrderNumber, account, billingAdress);
        this.shippingAdress = shippingAdress;

    }

    public PurchaseOrder(Account account, List<item> items) {

        this.account = account;
        this.items = items;

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