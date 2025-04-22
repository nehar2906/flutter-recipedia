class Recipe {
  final String title;
  final String type;
  final String ingredients;
  final String steps;
  final String image;
  bool isFavorite;

  Recipe({
    required this.title,
    required this.type,
    required this.ingredients,
    required this.steps,
    required this.image,
    this.isFavorite = false,
  });
}

List<Recipe> recipeList = [
  // Veg
  Recipe(
    title: 'Paneer Butter Masala',
    type: 'veg',
    ingredients:
        '200g paneer (cubed), 2 tomatoes (pureed), 1 onion (chopped), 1 tbsp butter, cream, Ginger-garlic paste, garam masala, chili powder, salt',
    steps:
        '1. Sauté onion in butter\n2. add ginger-garlic paste\n3. Serve hot1\n4.Add tomato puree, spices, cook till oil separates\n5. Add paneer cubes, simmer 5 mins.\n6. Finish with cream.\n7. Cook well\n8. Serve hot',
    image: 'paneer_bm.png',
  ),
  Recipe(
    title: 'Aloo Gobi',
    type: 'veg',
    ingredients:
        '1 cup cauliflower florets, 2 potatoes (cubed), Onion, tomato, ginger-garlic paste, Oil, Turmeric, chili powder, garam masala, salt',
    steps:
        '1. Add Oil\n2. auté onion and ginger-garlic\n3. add tomato and spices\n4. Add potatoes and cauliflower\n5. mix well\n6. Cover and cook till soft\n7. stirring occasionally\n8. Serve hot with Chappati or Rice',
    image: 'aloo_gobi.jpg',
  ),
  Recipe(
    title: 'Palak Paneer',
    type: 'veg',
    ingredients:
        '200g spinach, 200g paneer, Onion, tomato, garlic, green chili, Cream, salt, garam masala',
    steps:
        '1. Blanch spinach\n2. blend with chili and garlic\n3. Sauté onion, tomato, add spinach puree\n4. garam masala and spices\n5. green chili\n6. Add paneer cubes\n7. cook for 5 mins\n8. Finish with cream\n9. Serve hot',
    image: 'palak_paneer.png',
  ),
  Recipe(
    title: 'Bisi Bele Bath',
    type: 'veg',
    ingredients:
        '1 cup rice, ½ cup toor dal, 1 cup mixed veggies, 2 tbsp Bisi Bele Bath powder, Tamarind (small lemon size), Salt, mustard seeds, curry leaves, ghee',
    steps:
        '1. Cook rice and dal separately.\n2. Soak tamarind in warm water and extract juice\n3. Boil veggies in water with salt\n4. Mix dal, rice, tamarind juice, veggies.\n5. Add Bisi Bele Bath powder, cook for 5–7 mins\n6. Temper mustard seeds, curry leaves in ghee, and add\n7. Serve hot with salted/spicy chips, or boondhi',
    image: 'bisi_bele_bath.jpg',
  ),
  Recipe(
    title: 'Chana Masala',
    type: 'veg',
    ingredients:
        '1 cup chickpeas (soaked overnight), 1 onion, 1 tomato (chopped), 1 tsp ginger-garlic paste, 1 tsp chana masala powder, cumin, turmeric, chili powder, Salt, oil, coriander',
    steps:
        '1. Pressure cook chickpeas until soft\n2. Sauté onions, ginger-garlic paste, then tomatoes\n3. Add spices, cook till oil separates\n4. Mix chickpeas and simmer 10 mins\n5. Garnish with coriander.\n6. Serve hot with Poori or Chappati with finely chopped onions.',
    image: 'chana_masala.jpg',
  ),
  Recipe(
    title: 'Dal (Simple Toor Dal)',
    type: 'veg',
    ingredients:
        '½ cup toor dal, 1 tomato, 1 green chili, ½ tsp turmeric, salt, Mustard seeds, cumin, garlic, curry leaves',
    steps:
        '1. Pressure cook dal with chopped tomato, chili\n2. Add turmeric\n3. Mash and boil with salt\n4. Temper mustard, cumin, garlic in ghee and pour over dal\n5. Stir for 7 minutes\n6. Serve hot with Rice (with fried side dishes)',
    image: 'dal_yum.png',
  ),
  Recipe(
    title: 'Veg Biryani',
    type: 'veg',
    ingredients:
        '1 cup basmati rice, mixed vegetables, Oil, Salt, Onion, tomato, curd, Biryani masala, Whole spices: 1 bay leaf, 2 cloves, 1 cinnamon, 1 cardamom, mint, ghee, spices, garam masala, ',
    steps:
        '1. Heat oil/ghee, fry onions till golden brown, Add ginger-garlic paste, sauté until aroma comes, Add chopped tomatoes, cook till soft, Mix in turmeric, chili powder, biryani masala, Add veggies\n2. Stir in curd\n3. In a pan, layer half the rice, then the veggie masala, then remaining rice.\n4. Sprinkle mint, coriander, and a little ghee on top.\n5. Cover tightly and cook on low flame for 10–12 mins\n6. Serve hot with raita or salad!',
    image: 'veg_biryani.png',
  ),
  Recipe(
    title: 'Upma (white rava)',
    type: 'veg',
    ingredients:
        '1 cup rava/sooji, 2 cups water, 1 onion, mustard seeds, curry leaves, Green chili, ginger, salt, oil/ghee',
    steps:
        '1. Dry roast rava till aroma comes, keep aside.\n2. Sauté mustard, curry leaves, chili, onion.\n3. Add water and salt, bring to boil.\n4. Add rava slowly while stirring, cook till fluffy.\n5. Serve Hot with curd on the side',
    image: 'upma.jpg',
  ),
  Recipe(
    title: 'Veggie Dry (Stir Fried)',
    type: 'veg',
    ingredients:
        '2 cups mixed veggies (carrot, beans, peas), 1 tsp mustard, cumin, curry leaves, ½ tsp turmeric, salt, Oil, grated coconut (optional)',
    steps:
        '1. Boil chopped veggies with salt and turmeric.\n2. Boil chopped veggies with salt and turmeric.\n3. Add veggies\n4. stir fry 5 mins\n5. Add coconut if desired\n6. Serve hot (high in proteins and nutricious\n7.\n8.',
    image: 'veggie_fry.jpg',
  ),

  // Non-Veg
  Recipe(
    title: 'Chicken Curry',
    type: 'non-veg',
    ingredients:
        '500g chicken, onion, tomato, Ginger-garlic paste, chili powder, coriander, garam masala, Salt, oil, coriander',
    steps:
        '1. Sauté onions\n2. add ginger-garlic\n3. add tomatoes, and spices\n4. Add chicken, mix and cook until done\n5. Simmer with water to adjust consistency\n6. Cover lid for 12-15 minutes\n7. Serve hot with Rice or Chappati or Poori',
    image: 'chicken_curry.jpeg',
  ),
  Recipe(
    title: 'Egg Bhurji',
    type: 'non-veg',
    ingredients:
        '3 eggs, 1 onion, 1 tomato, green chilli, Oil, Turmeric, chili powder, salt, coriander',
    steps:
        '1. Add Oil, let it heat\n2. Sauté onion\n3. Add chili, and tomato\n4. Add spices\n5. then pour beaten eggs\n6. Stir continuously until scrambled and dry\n7. Serve Hot with Chappati or Rice or Poori\n(can be used as a side dish as well)',
    image: 'egg_bhurji.jpeg',
  ),
  Recipe(
    title: 'Chicken Kebab',
    type: 'non-veg',
    ingredients:
        '500g boneless chicken, 1 tbsp ginger-garlic paste, ½ cup curd, 1 tsp chili powder, garam masala, Lemon juice, salt, oil, Spices',
    steps:
        '1. Marinate chicken with all ingredients for 1 hour\n2. Grill or shallow fry until golden and cooked through\n3. Can also be Fried with Curry Leaves\n4. Serve Hot with Dal or biryani',
    image: 'chicken_kebab.jpeg',
  ),
  Recipe(
    title: 'Fish Fry',
    type: 'non-veg',
    ingredients:
        '4 fish slices, 1 tsp chili powder, turmeric, salt, lemon juice, Rice flour/semolina, oilSpices',
    steps:
        '1. Marinate fish with spices (Overnight or for 5-6 Hours)\n2. lemon for 30 mins\n3. Coat with flour/semolina\n4. Shallow fry till golden and crispy.\n5. Serve Hot',
    image: 'fish_fry.jpg',
  ),
  Recipe(
    title: 'Mutton Biryani',
    type: 'non-veg',
    ingredients:
        'Eggs, 500g mutton, 2 cups basmati rice, 1 onion, Oil, Salt, 1 tomato, yogurt, biryani masala, Ginger-garlic paste, mint, ghee, spices',
    steps:
        '1. Marinate mutton in yogurt + spices 1 hour\n2. Cook mutton till tender\n3. Layer half cooked rice and cooked mutton, sprinkle mint\n4. Cook on low flame 15 mins (dum)\n5. Serve hot with raita.',
    image: 'mutton_biryani.png',
  ),
  Recipe(
    title: 'Chicken Shawarma',
    type: 'non-veg',
    ingredients:
        'Eggs, Onion, Tomato, Spices, 300g boneless chicken, 1 tsp garlic paste, yogurt, pepper, paprika, Pita bread/roll, mayo/garlic sauce, Veggies (onion, cucumber)',
    steps:
        '1. Marinate chicken in spices + Egg + yogurt\n2. grill it\n3. Stuff grilled chicken in pita with sauce and veggies\n4. Roll and serve.',
    image: 'chicken_shawarma.jpeg',
  ),
  Recipe(
    title: 'Chicken Lollipop',
    type: 'non-veg',
    ingredients:
        'Eggs, Onion, Tomato, Spices, 8 chicken lollipops, 2 tbsp cornflour, 1 tbsp maida, 1 tsp chili sauce, soy sauce, garlic paste, Salt, oil',
    steps:
        '1. Marinate chicken in all ingredients 30 mins\n2 Deep fry till crisp and golden.\n3. Serve Hot wiht sliced lime and onion.',
    image: 'lollipop_chicken.jpg',
  ),

  // Desserts
  Recipe(
    title: 'Gulab Jamun',
    type: 'dessert',
    ingredients:
        'Milk powder, Sugar, Cardamom, 1 cup milk powder, 2 tbsp maida, baking soda, Milk, ghee (to fry), water (for syrup)',
    steps:
        '1. Make soft dough with milk powder mix.\n2. Shape into balls and deep fry.\n3. Soak in warm sugar syrup\n4. Let it cool.\n5. Serve in bowl with Sprinkled chopped Pistachios or Almonds\n6.\n7.\n8.',
    image: 'gulab_jamoon.jpeg',
  ),
  Recipe(
    title: 'Kheer',
    type: 'dessert',
    ingredients:
        'Rice, Milk, Sugar, Dry fruits, ¼ cup rice, 2 cups milk, Sugar, cardamom',
    steps:
        '1. Boil milk\n2. add soaked rice.\n3. Simmer till rice is soft and mixture thickens\n4. Add sugar, cardamom, dry fruits\n5. Serve in bowl with Sprinkled chopped Pistachios or Almonds.',
    image: 'kheer_png.png',
  ),
  Recipe(
    title: 'Chocolate Cake',
    type: 'dessert',
    ingredients:
        '1 cup all-purpose flour, ½ cup cocoa powder, ½ cup sugar, ½ cup butter (softened), 1 egg, ½ cup milk, 1 tsp baking powder, 1 tsp vanilla essence, A pinch of salt',
    steps:
        '1. Preheat oven to 180°C\n2. Grease and flour a cake pan\n3. Sift flour, cocoa, baking powder, and salt\n4. Beat butter and sugar until creamy.\n5. Add egg and vanilla. Mix well.\n6. Add dry ingredients and milk little by little.\n7. Mix to form a smooth batter.\n8. Pour batter into the cake pan.\n9. Bake for 30–35 mins.\n10. Cool for 10 mins, then remove from pan.\n11. Let it cool completely on a rack.\n12. Optional: Add frosting or powdered sugar',
    image: 'choco_cake.jpeg',
  ),
  Recipe(
    title: 'Lauki Ki Kheer',
    type: 'dessert',
    ingredients:
        '1 cup grated bottle gourd, 2 cups milk, sugar, Cardamom, dry fruits, ghee',
    steps:
        '1. Sauté lauki in ghee for 5 mins\n2. Add milk.\n3. simmer till thick\n4. Add sugar, cardamom, dry fruits.\n5. let it cool\n6. Serve in bowl with Sprinkled chopped Pistachios or Almonds.',
    image: 'lauki_kheer.jpeg',
  ),
  Recipe(
    title: 'Red Velvet Cake',
    type: 'dessert',
    ingredients:
        '1 cup flour, ½ cup sugar, ¼ cup butter, 1 egg, red color, Cocoa powder, baking powder, Cream cheese frosting',
    steps:
        '1. Mix wet and dry ingredients\n2. Bake at 180°C for 25–30 mins.\n3. Cool and frost with cream cheese.',
    image: 'red_velvet.png',
  ),
  Recipe(
    title: 'Blueberry Smoothie',
    type: 'dessert',
    ingredients:
        '1 cup blueberries (fresh/frozen), ½ banana, ½ cup yogurt, Honey, ice cubes',
    steps: '1. Blend all together until smooth\n2. Serve chilled.',
    image: 'blueberry_smoothie.jpg',
  ),
  Recipe(
    title: 'Strawberry Ice-Cream',
    type: 'dessert',
    ingredients: '1 cup strawberries, ½ cup cream, ¼ cup condensed milk',
    steps:
        '1. Blend strawberries and mix with cream + milk\n2. Freeze 6–8 hours, stir once in between.',
    image: 'strawberry_icecream.jpeg',
  ),
  Recipe(
    title: 'Mango Shake',
    type: 'dessert',
    ingredients: '1 ripe mango (peeled, chopped), 1 cup milk, sugar/honey',
    steps:
        '1. Blend mango, milk, sugar until smooth\n2. Serve cold\n3. (Add chopped mango on top)',
    image: 'mango_shake.jpeg',
  ),
  Recipe(
    title: 'Apple Pie',
    type: 'dessert',
    ingredients: '2 apples (sliced), sugar, cinnamon, Pie crust dough',
    steps:
        '1. Cook apples with sugar & cinnamon\n2. Place in crust, cover with top layer.\n3. Bake at 180°C for 30–40 mins.',
    image: 'apple_pie.jpeg',
  ),
  Recipe(
    title: 'Cheesecake',
    type: 'dessert',
    ingredients:
        'Crushed biscuits, butter (for base), 1 cup cream cheese, sugar, 1 egg, vanilla',
    steps:
        '1. Press biscuit base in mold.\n2. Mix cheese, egg, sugar; pour over base.\n3. Bake at 160°C for 30–40 mins. Chill before serving.',
    image: 'cheese_cake.jpeg',
  ),
];
