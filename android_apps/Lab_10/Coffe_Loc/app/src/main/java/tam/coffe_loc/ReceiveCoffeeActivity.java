package tam.coffe_loc;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import android.content.Intent;
import android.net.Uri;
import android.view.View;


public class ReceiveCoffeeActivity extends ActionBarActivity {

    private String coffeeShop;
    private String coffeeShopURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receive_coffee);

        Intent intent = getIntent();
        coffeeShop = intent.getStringExtra("coffeeShopName");
        coffeeShopURL = intent.getStringExtra("coffeeShopURL");
        System.out.println(coffeeShop);
        System.out.println(coffeeShopURL);


        TextView messageView = (TextView) findViewById(R.id.CoffeeShopTextView);
        messageView.setText("You should check out " + coffeeShop);
    }

    public void loadWebSite(View view){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(coffeeShopURL));
        startActivity(intent);
    }



    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_receive_coffee, menu);
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
