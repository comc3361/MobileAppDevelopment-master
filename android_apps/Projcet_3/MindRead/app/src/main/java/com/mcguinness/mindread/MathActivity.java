package com.mcguinness.mindread;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import java.util.ArrayList;

public class MathActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_math);
    }

    public void calculateNumber (View view) {
        EditText number = (EditText) findViewById(R.id.numberInput);

        //initialize variables
        int myNum1 = 0;
        int myNum2 = 0;
        int myFullNum = 0;
        int middleNum = 0;
        int almostFinalNum = 0;

        //retrieve entered number
        String fullNumber = number.getText().toString();
        String [] digits = fullNumber.split("(?!^)"); //cool Regex expression to parse entered string
        String digit1 = digits[0];
        String digit2 = digits[1];


        //parse the entered String into Int
        try {
            myNum1 = Integer.parseInt(digit1);
        } catch(NumberFormatException nfe) {
            System.out.println("Could not parse" + nfe);
        }
        try {
            myNum2 = Integer.parseInt(digit2);
        } catch(NumberFormatException nfe) {
            System.out.println("Could not parse" + nfe);
        }
        try {
            myFullNum = Integer.parseInt(fullNumber);
        } catch(NumberFormatException nfe) {
            System.out.println("Could not parse" + nfe);
        }

        //perform calculation
        middleNum = myNum1 + myNum2;
        almostFinalNum = myFullNum - middleNum;

        //display number
        TextView showNumber = (TextView) findViewById(R.id.finalNumber);
        showNumber.setText("" + almostFinalNum);
    }

}
