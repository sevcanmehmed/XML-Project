function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

    let healthy_food_catalog = doc.createElement("healthy_food_catalog");
    doc.appendChild(healthy_food_catalog);

    let foods = doc.createElement("foods");
    healthy_food_catalog.appendChild(foods);

    let food = doc.createElement("food");
    foods.appendChild(food);

    let name = doc.createElement("name");
    food.appendChild(name);
    name.appendChild(doc.createTextNode("Авокадо"));

    let image = doc.createElement("image");
    food.appendChild(image);
    image.appendChild(doc.createTextNode("avocado.jpg"));

    let category = doc.createElement("category");
    category.setAttribute("type", "Плод");
    food.appendChild(category);

    let benefits = doc.createElement("benefits");
    benefits.appendChild(doc.createTextNode("\n" +
        " \t                    1. Намалява риска от сърдечносъдови заболявания.\n" +
        " \t                      2. Екстракт от авокадо подпомага за облекчаване на симптомите на артрит.\n" +
        " \t                      3. Мазнините в авокадото помагат да се абсорбират хранителните вещества от растителните храни.\n" +
        " \t                      4. Помага в борбата с килограмите\n" +
        " \t                      5. Предпазва от рак\n" +
        " \t                      6. Въздейства благотворно върху кожата и очите"))

     food.appendChild(benefits);

    let price = doc.createElement("price");
    price.setAttribute("grams","200g");
    price.appendChild(doc.createTextNode("2.48лв"));
    food.appendChild(price);

    let texture = doc.createElement("texture");
    texture.appendChild(doc.createTextNode("Кремообразна"))
    food.appendChild(texture);

    let consistency = doc.createElement("consistency");
    consistency.appendChild(doc.createTextNode("Мека"));
    food.appendChild(consistency);

    let expireDate = doc.createElement("expire-date");
    expireDate.appendChild(doc.createTextNode("7-10 дни"));
    expireDate.setAttribute("storage", "хладилник");
    food.appendChild(expireDate);

    let flavour = doc.createElement("flavour");
    flavour.setAttribute("alternative", "маслен");
    flavour.appendChild(doc.createTextNode("Орехов"));
    food.appendChild(flavour);

        let appearance = doc.createElement("appearance");
        food.appendChild(appearance);

        let size = doc.createElement("size");
        size.appendChild(doc.createTextNode("7-10 дни"));
        appearance.appendChild(size);

        let shape = doc.createElement("shape");
        let color = doc.createElement("color");
        shape.appendChild(doc.createTextNode("крушовидна, продълговата"));
        color.appendChild(doc.createTextNode("тъмно зелен"));
        appearance.appendChild(shape);
        appearance.appendChild(color);

        let nutritions = doc.createElement("nutritional-content");
        nutritions.setAttribute("grams","200g");
        let calories = doc.createElement("calories");
        calories.appendChild(doc.createTextNode("322"));
        let carbs = doc.createElement("carbs");
        carbs.setAttribute("sugars","1g");
        carbs.appendChild(doc.createTextNode("17g"));
        let fats = doc.createElement("fat");
        fats.setAttribute("saturated", "4g");
        fats.appendChild(doc.createTextNode("29g"))
        let protein = doc.createElement("protein");
        protein.appendChild(doc.createTextNode("4g"));
        let vitamin = doc.createElement("vitamin");
        vitamin.appendChild(doc.createTextNode("C"));
        vitamin.setAttribute("quantity", "33%");

        nutritions.appendChild(calories);
        nutritions.appendChild(carbs);
        nutritions.appendChild(fats);
        nutritions.appendChild(protein);
        nutritions.appendChild(vitamin);
        food.appendChild(nutritions);

        let recipe = doc.createElement("recipe");
        recipe.setAttribute("name", "сандвич с авокадо");

        let products = doc.createElement("products");
        products.appendChild(doc.createTextNode("\n" +
            "\t\t\t                 авокадо - 2 бр.\n" +
            "\t\t\t                 червен лук - 1 бр.\n" +
            "\t\t\t                 домати - 1/2 бр.\n" +
            "\t\t\t                 лимон - 1/2 бр.\n" +
            "\t\t\t                 зехтин - на вкус\n" +
            "\t\t\t                 сол - на вкус"))

       let preparation = doc.createElement("preparation");
        preparation.appendChild(doc.createTextNode("\n" +
            "  \t\t\t                 Обелваме авокадото, като е хубаво да е добре узряло.\n" +
            "  \t\t\t                 Намачкваме го с вилица до получаването на хомогенна смес. Нарязваме на ситно лука и домата. Смесваме всичко е овкусяваме със зехтин и сол.\n" +
            "  \t\t\t                 Препичаме филийки пълнозърнест хляб и ги намазваме с готовата смес.\n" +
            "  \t\t\t                 Чудесно предястие, както и междинна закуска."))
      let time = doc.createElement("time");
        time.appendChild(doc.createTextNode("10-15 минути"));
        recipe.appendChild(products);
        recipe.appendChild(preparation);
        recipe.appendChild(time);
        food.appendChild(recipe);

        let production = doc.createElement("ethical-production");
        let country = doc.createElement("country");
        country.setAttribute("part", "Централна");
        country.appendChild(doc.createTextNode("Америка"));
        production.appendChild(country);
        food.appendChild(production);

    return doc;
}
