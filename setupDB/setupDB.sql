CREATE TABLE `databaseName`.`recipes` (
  `RecipeID` INT NOT NULL,
  `RecipeName` VARCHAR(100) NOT NULL,
  `RecipeType` VARCHAR(50) NULL,
  `Serves` TINYINT(1) UNSIGNED NULL,
  PRIMARY KEY (`RecipeID`),
  UNIQUE INDEX `RecipeName_UNIQUE` (`RecipeName` ASC));

CREATE TABLE `databaseName`.`ingredients` (
  `IngredientID` INT NOT NULL,
  `IngredientName` VARCHAR(100) NOT NULL,
  `IngredientType` VARCHAR(50) NULL,
  PRIMARY KEY (`IngredientID`),
  UNIQUE INDEX `IngredientName_UNIQUE` (`IngredientName` ASC));

CREATE TABLE `databaseName`.`links` (
  `LinkID` INT NOT NULL,
  `RecipeID` INT NOT NULL,
  `IngredientID` INT NOT NULL,
  `Quantity` DECIMAL NULL,
  `Measurement` VARCHAR(50) NULL,
  `Notes` VARCHAR(1024) NULL,
  PRIMARY KEY (`LinkID`),
  INDEX `RecipeID_idx` (`RecipeID` ASC),
  INDEX `IngredientID_idx` (`IngredientID` ASC),
  CONSTRAINT `RecipeID`
    FOREIGN KEY (`RecipeID`)
    REFERENCES `databaseName`.`recipes` (`RecipeID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `IngredientID`
    FOREIGN KEY (`IngredientID`)
    REFERENCES `databaseName`.`ingredients` (`IngredientID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


INSERT INTO `databaseName`.`recipes` (`RecipeID`, `RecipeName`, `RecipeType`, `Serves`) VALUES ('1', 'Key Lime and Mandarin Pie', 'dessert', '6');
INSERT INTO `databaseName`.`recipes` (`RecipeID`, `RecipeName`, `RecipeType`, `Serves`) VALUES ('2', 'Light Lemon and Lime Cheesecake', 'dessert', '8');
INSERT INTO `databaseName`.`recipes` (`RecipeID`, `RecipeName`, `RecipeType`, `Serves`) VALUES ('3', 'Mini Rice Puddings', 'dessert', '4');
INSERT INTO `databaseName`.`recipes` (`RecipeID`, `RecipeName`, `RecipeType`, `Serves`) VALUES ('4', 'Fruit Salad with Vanilla and Lime Syrup', 'dessert', '8');
INSERT INTO `databaseName`.`recipes` (`RecipeID`, `RecipeName`, `RecipeType`, `Serves`) VALUES ('5', 'Churros with Chocolate Sauce', 'dessert', '4');
INSERT INTO `databaseName`.`recipes` (`RecipeID`, `RecipeName`, `RecipeType`, `Serves`) VALUES ('6', 'Pumpkin Risotto', 'main', '4');
INSERT INTO `databaseName`.`recipes` (`RecipeID`, `RecipeName`, `RecipeType`, `Serves`) VALUES ('7', 'Kumara Topped Fish Pie', 'main', '6');
INSERT INTO `databaseName`.`recipes` (`RecipeID`, `RecipeName`, `RecipeType`, `Serves`) VALUES ('8', 'Beef Lasagna', 'main', '4');
INSERT INTO `databaseName`.`recipes` (`RecipeID`, `RecipeName`, `RecipeType`, `Serves`) VALUES ('9', 'Sweet & Sour Chicken', 'main', '4');
INSERT INTO `databaseName`.`recipes` (`RecipeID`, `RecipeName`, `RecipeType`, `Serves`) VALUES ('10', 'Salmon Scrambled Eggs', 'main', '4');


INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('1', 'Biscuit', 'baked');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('2', 'Milk', 'dairy');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('3', 'Lime', 'fruit');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('4', 'Cream', 'dairy');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('5', 'Icecream', 'dairy');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('6', 'Egg', 'protein');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('7', 'Lemon', 'fruit');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('8', 'Orange', 'fruit');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('9', 'Butter', 'dairy');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('10', 'Mandarin', 'fruit');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('11', 'Ginger', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('12', 'Gelatine', 'protein');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('13', 'Water', '');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('14', 'Cheese', 'dairy');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('15', 'Yoghurt', 'dairy');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('16', 'Sugar', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('17', 'Extract', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('18', 'Rice', 'grain');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('19', 'Blackcurrant', 'fruit');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('20', 'Pineapple', 'fruit');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('21', 'Strawberry', 'fruit');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('22', 'Kiwifruit', 'fruit');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('23', 'Cinnamon', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('24', 'Salt', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('25', 'Oil', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('26', 'Flour', '');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('27', 'Onion', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('28', 'Garlic', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('29', 'Stock', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('30', 'Pumpkin', 'fruit');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('31', 'Parsley', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('32', 'Kumara', 'vegetable');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('33', 'Fish', 'protein');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('34', 'Prawn', 'protein');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('35', 'Beef', 'protein');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('36', 'Tomato', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('37', 'Basil', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('38', 'Spinach', 'vegetable');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('39', 'Lasagna', 'pasta');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('40', 'Vinegar', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('41', 'Chicken', 'protein');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('42', 'Mix', '');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('43', 'Cumin', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('44', 'Tabasco', 'flavour');
INSERT INTO `databaseName`.`ingredients` (`IngredientID`, `IngredientName`, `IngredientType`) VALUES ('45', 'Chives', 'flavour');


INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('1', '1', '1', '250', 'grams', 'Gingernut');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('2', '1', '2', '395', 'grams', 'Condensed');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('3', '1', '3', '5', 'whole', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('4', '1', '4', '300', 'milliliters', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('5', '1', '5', '0', '', 'Vanilla');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('6', '1', '6', '3', 'whole', 'separated');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('7', '1', '7', '1', 'whole', 'zest & juice');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('8', '1', '8', '2', 'whole', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('9', '1', '9', '75', 'grams', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('10', '1', '10', '600', 'grams', 'peeled');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('11', '2', '11', '1', 'teaspoon', 'grounded');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('12', '2', '12', '2', 'teaspoon', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('13', '2', '13', '45', 'milliliters', 'hot');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('14', '2', '14', '375', 'grams', 'cottage cheese, sieved');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('15', '2', '15', '150', 'milliliters', 'low fat, natural');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('16', '2', '7', '1', 'whole', 'zest & juice');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('17', '2', '3', '1', 'whole', 'zest & juice');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('18', '2', '1', '250', 'grams', 'Marie');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('19', '2', '16', '65', 'grams', 'Caster');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('20', '2', '9', '100', 'grams', 'salted');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('21', '3', '4', '400', 'milliliters', 'Lite Coconut');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('22', '3', '2', '3', 'cups', 'Trim');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('23', '3', '17', '1', 'teaspoon', 'Vanilla Essence');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('24', '3', '18', '120', 'grams', 'short/medium grain');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('25', '3', '19', '1', 'cups', 'frozen, defrosted');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('26', '3', '16', '0.333', 'cups', 'Caster/Brown');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('27', '4', '3', '0.25', 'cups', 'juice & zest');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('28', '4', '16', '0.25', 'cups', 'Caster');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('29', '4', '16', '0.5', 'cups', 'Brown');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('30', '4', '17', '1', 'whole', 'Vanilla bean, split');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('31', '4', '13', '1', 'cups', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('32', '4', '20', '1', 'whole', 'large, chopped');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('33', '4', '21', '300', 'grams', 'mixed halved & whole');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('34', '4', '22', '4', 'whole', 'sliced');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('35', '4', '15', '0', '', 'greek-styled');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('36', '5', '16', '0.5', 'cups', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('37', '5', '23', '1.5', 'teaspoons', 'grounded');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('38', '5', '13', '1', 'cups', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('39', '5', '16', '1.5', 'tablespoons', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('40', '5', '24', '0.5', 'teaspoons', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('41', '5', '25', '2', 'tablespoons', 'vegetable oil');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('42', '5', '26', '1', 'cups', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('43', '5', '2', '100', 'grams', 'Chocolate');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('44', '5', '4', '0.5', 'cups', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('45', '5', '5', '0', '', 'to serve');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('46', '6', '27', '1', 'whole', 'finely chopped');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('47', '6', '18', '3', 'cups', 'Arborio');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('48', '6', '28', '1', 'tablespoons', 'chopped');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('49', '6', '29', '1.5', 'liters', 'vegetable');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('50', '6', '30', '400', 'grams', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('51', '6', '14', '100', 'grams', 'Parmesan, grated');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('52', '6', '31', '2', 'tablespoons', 'chopped');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('53', '6', '25', '0.5', 'cups', 'olive');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('54', '6', '9', '4', 'tablespoons', 'small pieces');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('55', '7', '32', '1000', 'grams', 'orange, peeled');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('56', '7', '24', '0.5', 'teaspoons', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('57', '7', '9', '175', 'grams', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('58', '7', '2', '500', 'milliliters', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('59', '7', '33', '500', 'grams', 'Snapper/Tarakihi');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('60', '7', '27', '1', 'whole', 'medium white, finely diced');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('61', '7', '26', '75', 'grams', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('62', '7', '7', '100', 'milliliters', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('63', '7', '34', '100', 'grams', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('64', '7', '31', '1', 'tablespoons', 'chopped');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('65', '7', '6', '6', 'whole', 'boiled - 8 minutes');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('66', '8', '25', '1', 'tablespoons', 'olive');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('67', '8', '27', '1', 'whole', 'brown, finely chopped');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('68', '8', '28', '2', 'teaspoons', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('69', '8', '35', '750', 'grams', 'Mince');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('70', '8', '36', '2', 'tablespoon', 'paste');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('71', '8', '37', '2', 'tablespoons', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('72', '8', '38', '100', 'grams', 'baby spinach leaves');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('73', '8', '39', '3', 'sheets', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('74', '8', '14', '375', 'grams', 'Ricotta, smooth');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('75', '8', '14', '0.333', 'cups', 'Parmesan, grated');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('76', '8', '36', '700', 'milliliters', 'pasta sauce');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('77', '9', '36', '0.333', 'cup', 'sauce');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('78', '9', '16', '0.25', 'cups', 'Brown');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('79', '9', '40', '0.25', 'cups', 'white vinegar');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('80', '9', '25', '2', 'teaspoons', 'sesame');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('81', '9', '41', '500', 'grams', 'thin strips chicken breasts');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('82', '9', '26', '0.5', 'tablespoons', 'cornflour');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('83', '9', '13', '0.5', 'tablespoons', 'cold');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('84', '9', '42', '500', 'grams', 'vege/stir-fry');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('85', '9', '18', '2', 'cups', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('86', '10', '27', '2', 'whole', 'sliced spring onions');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('87', '10', '43', '0.5', 'teaspoons', 'grounded');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('88', '10', '36', '6', 'whole', 'medium, chopped');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('89', '10', '44', '1.5', 'teaspoons', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('90', '10', '4', '8', 'tablespoons', '');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('91', '10', '6', '8', 'whole', 'scrambled');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('92', '10', '33', '100', 'grams', 'Smoked Salmon Pieces');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('93', '10', '45', '2', 'tablespoons', 'chopped');
INSERT INTO `databaseName`.`links` (`LinkID`, `RecipeID`, `IngredientID`, `Quantity`, `Measurement`, `Notes`) VALUES ('94', '10', '9', '25', 'grams', '');
