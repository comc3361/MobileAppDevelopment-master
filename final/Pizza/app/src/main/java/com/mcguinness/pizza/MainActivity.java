package com.mcguinness.pizza;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.EditText;
import android.widget.ToggleButton;
import android.widget.Switch;
import android.content.Intent;


public class MainActivity extends Activity {
    String suggestedPizzaShop;
    String suggestedPizzaURL;


    public void createPizza(View view) {
        TextView pizza_built = (TextView) findViewById(R.id.pizza_text);

        Spinner pizzaSpinner = (Spinner) findViewById(R.id.pizzaSpinner);
        String pizzaValue = String.valueOf(pizzaSpinner.getSelectedItem());

        EditText name = (EditText) findViewById(R.id.pizza_editText);
        String pizzaName = name.getText().toString();

        ToggleButton toggle = (ToggleButton) findViewById(R.id.sauce);
        boolean sauceChoice = toggle.isChecked();
        String sauceString;
        if (sauceChoice) {
            sauceString = "red";
        } else {
            sauceString = "white";
        }

        RadioGroup crust = (RadioGroup) findViewById(R.id.crust_type);
        String crustType;
        int crust_id = crust.getCheckedRadioButtonId();
        switch(crust_id){
            case -1:
                crustType = "no";
                break;
            case R.id.radioButton1:
                crustType = "thin";
                break;
            case R.id.radioButton2:
                crustType = "thick";
                break;
            default:
                crustType = "no";
        }
        if (crustType.equals("thin")) {
            suggestedPizzaShop="Pizzeria Locale";
                    suggestedPizzaURL = "http://www.localeboulder.com";
        }

        if (crustType.equals("thick")) {
            suggestedPizzaShop="Cosmos";
            suggestedPizzaURL="http://www.cosmospizza.com";
        }

        String gluten_string = "";
        Switch gluten_switch = (Switch) findViewById(R.id.switch1);
        boolean gluten = gluten_switch.isChecked();
        if (gluten) {
            gluten_string = " gluten free ";
            suggestedPizzaShop = "Beau Jo's";
                    suggestedPizzaURL = "http://www.beaujos.com";
        }





        pizza_built.setText("The " + pizzaName + " is a " + pizzaValue + " " + crustType + " crust " + gluten_string + "pizza with " + sauceString + " sauce.");
    }

    public void findPizza(View view) {

        Intent intent = new Intent(this, MainActivity2.class);

        intent.putExtra("pizzaShopName", suggestedPizzaShop);
        intent.putExtra("pizzaShopURL", suggestedPizzaURL);

        startActivity(intent);

    }






    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
