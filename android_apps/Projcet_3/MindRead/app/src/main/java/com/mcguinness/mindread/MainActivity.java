package com.mcguinness.mindread;

import android.content.Intent;
import android.media.Image;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.Spinner;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void revealSymbol (View view) {
        ImageView symbolImage = (ImageView) findViewById(R.id.winningSymbol);
        Spinner spinner2 = (Spinner) findViewById(R.id.tableSpinner);
        String symbol = String.valueOf(spinner2.getSelectedItem());

        //logic for changing the symbol for corresponding table; could be replaced with a switch statement
        int image2 = 0;
        if (symbol.equals("table1")) {
            image2 = R.drawable.symbol1;
        } else if (symbol.equals("table2")) {
            image2 = R.drawable.symbol2;
        } else if (symbol.equals("table3")) {
            image2 = R.drawable.symbol3;
        } else if (symbol.equals("table4")) {
            image2 = R.drawable.symbol4;
        } else if (symbol.equals("table5")) {
            image2 = R.drawable.symbol5;
        } else if (symbol.equals("table6")) {
            image2 = R.drawable.symbol6;
        } else if (symbol.equals("table7")) {
            image2 = R.drawable.symbol7;
        } else if (symbol.equals("table8")) {
            image2 = R.drawable.symbol8;
        } else if (symbol.equals("table9")) {
            image2 = R.drawable.symbol9;
        } else if (symbol.equals("table10")){
            image2 = R.drawable.symbol10;
        }
        symbolImage.setImageResource(image2);

    }

    public void updateTable (View view) {
        ImageView reveal = (ImageView) findViewById(R.id.winningSymbol);
        ImageView tableImage = (ImageView) findViewById(R.id.imageView);
        Spinner spinner = (Spinner) findViewById(R.id.tableSpinner);
        String table = String.valueOf(spinner.getSelectedItem());

        //logic to display the correct table; switch statement could've been used
        int image = 0;
        if (table.equals("table1")) {
            image = R.drawable.table1;
        } else if (table.equals("table2")) {
            image = R.drawable.table2;
        } else if (table.equals("table3")) {
            image = R.drawable.table3;
        } else if (table.equals("table4")) {
            image = R.drawable.table4;
        } else if (table.equals("table5")) {
            image = R.drawable.table5;
        } else if (table.equals("table6")) {
            image = R.drawable.table6;
        } else if (table.equals("table7")) {
            image = R.drawable.table7;
        } else if (table.equals("table8")) {
            image = R.drawable.table8;
        } else if (table.equals("table9")) {
            image = R.drawable.table9;
        } else if (table.equals("table10")) {
            image = R.drawable.table10;
        }

        tableImage.setImageResource(image);
        reveal.setImageResource(android.R.color.transparent);

    }

    public void mathHelp (View view) {

        //explicit intent to open MathActivity.java

        Intent intent = new Intent(this, MathActivity.class);

        startActivity(intent);

    }



}
