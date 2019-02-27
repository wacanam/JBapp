package com.webapp.JolibeeApp;

import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.Date;

import com.webapp.JolibeeApp.model.Recipe;
import com.webapp.JolibeeApp.model.Ingredient;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

/**
 *
 * @author wacanam
 */
public class Main {

    public static void main(String[] args) {
        staticFiles.location("/css"); // Static files

        Recipe r = new Recipe();    // move model here for (semi)persistent values
        r.setName("Pork Adobo");    // optional initial value set

        get("/", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title","Jolibee App");   
            return new ModelAndView(model, "index.ftl"); // located in src/main/resources/spark/template/freemarker
        }, new FreeMarkerEngine());

        get("/page1", (req, res) -> {
            Ingredient pork = new Ingredient("Pork", 2);
            Ingredient soysauce = new Ingredient("Soy Sause", 1);
            Ingredient vinegar = new Ingredient("Vinegar", 1);
            
            r.ingredients.add(pork);
            r.ingredients.add(soysauce);
            r.ingredients.add(vinegar);

            Map<String, Object> model = new HashMap<>();
            model.put("title","Spark Demo");        // Basic String
            model.put("recipe", r);                 // Working with a Model
            model.put("dateNow", new Date().toString());    // Dealing with a Date
            return new ModelAndView(model, "page1.ftl");    // located in src/main/resources/spark/template/freemarker
        }, new FreeMarkerEngine());

        get("/page2", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title","Spark Demo");
            return new ModelAndView(model, "page2.ftl"); 
        }, new FreeMarkerEngine());
        
        /* Basic Form handler with SparkJava
        post("/dunkthisForm", (req, res) ->{
            String test, test2;
            test = req.queryParams("someInput");
            test2 = req.queryParams("anotherInput");
            return test + " " + test2;
        });
        */

        /* Form handler with a Freemarker templated being returned */
        post("/dunkthisForm", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title","Spark Demo");
            model.put("test", req.queryParams("someInput"));
            model.put("last_name", req.queryParams("lastName"));

            return new ModelAndView(model, "confirm.ftl"); // located in src/main/resources/spark/template/freemarker
        }, new FreeMarkerEngine());


    }
}
