package tam.coffe_loc;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Spinner;
import android.content.Intent;
import android.widget.TextView;


public class FindCoffeeActivity extends ActionBarActivity {


    private CoffeeShop myCoffeeShop = new CoffeeShop();

    public void findCoffee(View view) {
        Spinner crowdSpinner = (Spinner)findViewById(R.id.spinner);
        String crowd = String.valueOf(crowdSpinner.getSelectedItem());
        myCoffeeShop.setCoffeeShop(crowd);
        String suggestedCoffeeShop = myCoffeeShop.getCoffeeShop();
        String suggestedCoffeeURL = myCoffeeShop.getCoffeeShopURL();
        System.out.println(suggestedCoffeeShop);
        System.out.println(suggestedCoffeeURL);

        //create an intent
        Intent intent = new Intent(this, ReceiveCoffeeActivity.class);

        //pass data
        intent.putExtra("coffeeShopName", suggestedCoffeeShop);
        intent.putExtra("coffeeShopURL", suggestedCoffeeURL);

        //start the intent
        startActivity(intent);



    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_find_coffee);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_find_coffee, menu);
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
