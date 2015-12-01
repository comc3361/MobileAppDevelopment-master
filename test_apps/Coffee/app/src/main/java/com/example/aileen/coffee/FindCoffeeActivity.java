package com.example.aileen.coffee;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Spinner;
import android.widget.TextView;

public class FindCoffeeActivity extends AppCompatActivity {

    private CoffeeShop myCoffeeShop = new CoffeeShop();

    public void findCoffee(View view){
        Spinner crowdSpinner = (Spinner)findViewById(R.id.spinner);

        //String crowd = String.valueOf(crowdSpinner.getSelectedItem());
        //myCoffeeShop.setCoffeeShop(crowd);


        String suggestedCoffeeShop = myCoffeeShop.getCoffeeShop();
        String suggestedCoffeeShopURL = myCoffeeShop.getCoffeeShopURL();
        System.out.println(suggestedCoffeeShop);
        System.out.println(suggestedCoffeeShopURL);

        //create an intent
        Intent intent = new Intent(this, ReceiveCoffeeActivity.class);

        TextView messageView = (TextView) findViewById(R.id.coffeeShopTextView);
        String message = getString(R.string.message);
        messageView.setText(message + " " + coffeeShop);

        //pass data
        intent.putExtra("coffeeShopName", suggestedCoffeeShop);
        intent.putExtra("coffeeShopURL", suggestedCoffeeShopURL);

        //start the intent
        startActivity(intent);

    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_find_coffee);
    }
}
