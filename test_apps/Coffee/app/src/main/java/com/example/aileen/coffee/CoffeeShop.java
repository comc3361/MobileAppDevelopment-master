package com.example.aileen.coffee;

/**
 * Created by aileen on 11/16/15.
 */

public class CoffeeShop {
    private String coffeeShop;
    private String coffeeShopURL;

    private void setCoffeeInfo(Integer coffeeCrowd){
        if (coffeeCrowd == 1) {
            coffeeShop = "Amante";
            coffeeShopURL = "https://www.amantecoffee.com";
        }
        else if (coffeeCrowd == 0) {
            coffeeShop = "Starbucks";
            coffeeShopURL = "https://www.starbucks.com";
        }
        else if (coffeeCrowd == 2) {
            coffeeShop = "Ozo";
            coffeeShopURL = "https://ozocoffee.com";
        }
        else if (coffeeCrowd == 4) {
            coffeeShop = "Trident";
            coffeeShopURL = "http://www.tridentcafe.com";
        }
        else if (coffeeCrowd == 3) {
            coffeeShop = "Pekoe";
            coffeeShopURL = "http://www.pekoesiphouse.com";
        }
        else if (coffeeCrowd == 5) {
            coffeeShop = "Buchanans";
            coffeeShopURL = "http://www.buchananscoffeepub.com";
        }
        else {
            coffeeShop = "none";
            coffeeShopURL = "https://www.google.com/search?q=boulder+coffee+shops&ie=utf-8&oe=utf-8";
        }

    }

    public void setCoffeeShop(Integer coffeeCrowd){
        setCoffeeInfo(coffeeCrowd);
    }

    public void setCoffeeShopURL(Integer coffeeCrowd){
        setCoffeeInfo(coffeeCrowd);
    }

    public String getCoffeeShop(){
        return coffeeShop;
    }

    public String getCoffeeShopURL(){
        return coffeeShopURL;
    }
}
