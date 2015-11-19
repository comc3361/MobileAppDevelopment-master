package tam.coffe_loc;

/**
 * Created by comc3361 on 11/17/15.
 */
public class CoffeeShop {
    private String coffeeShop;
    private String coffeeShopURL;

    private void setCoffeeInfo(String coffeeCrowd)
    {
        if (coffeeCrowd.equals("cycling")) {
            coffeeShop = "Amante";
            coffeeShopURL = "https://www.amantecoffee.com";
        } else if (coffeeCrowd.equals("popular")) {
            coffeeShop = "Starbucks";
            coffeeShopURL = "https://www.starbucks.com";
        } else if (coffeeCrowd.equals("hipster")) {
            coffeeShop = "Ozo";
            coffeeShopURL = "https://www.ozocoffee.com";
        } else if (coffeeCrowd.equals("hippie")) {
            coffeeShop = "Trident";
            coffeeShopURL = "https://www.tridentcafe.com";
        } else if (coffeeCrowd.equals("tea")) {
            coffeeShop = "Pekoe";
            coffeeShopURL = "https://www.pekoesiphouse.com";
        } else if (coffeeCrowd.equals("college")) {
            coffeeShop = "Buchanans";
            coffeeShopURL = "https://www.buchananscoffeepub.com";
        } else {
            coffeeShop = "none";
            coffeeShopURL = "https://www.google.com";
        }


    }

    public void setCoffeeShop(String coffeeCrowd) {
        setCoffeeInfo(coffeeCrowd);
    }

    public void setCoffeeShopURL(String coffeeCrowd) {
        setCoffeeInfo(coffeeCrowd);
    }

    public String getCoffeeShop() {
        return coffeeShop;
    }

    public String getCoffeeShopURL() {
        return coffeeShopURL;
    }
}
