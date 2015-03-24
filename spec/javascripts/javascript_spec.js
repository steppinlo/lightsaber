describe('canary test', function(){
  it ('should work', function(){
    expect(true).toBe(true);
  });
});

describe ("calculator", function() {
  it("should return a calculator object", function() {
    expect(calculator).toBeDefined();
  });

  describe('add', function(){
    it("adds correctly", function() {
      var calc = calculator;
      expect(calc.add(10, 2)).toEqual(12);
    });
  });

  describe('multiply', function(){
    it("multiplies correctly", function() {
      var calc = calculator;
      expect(calc.multiply(10, 2)).toEqual(20);
    });
  });

  describe('divide', function(){
    it("divide correctly", function() {
      var calc = calculator;
      expect(calc.divide(10, 2)).toEqual(5);
    });
  });

  describe('subtract', function(){
    it("subtract correctly", function() {
      var calc = calculator;
      expect(calc.subtract(10, 2)).toEqual(8);
    });
  });
});


  // it("should have height 0 when created", function() {
  //   var tree=createTree();
  //   expect(tree.height).toEqual(0);
  // });
  // it("should have 0 oranges when created", function() {
  //   var tree=createTree();
  //   expect(tree.orangeCount).toEqual(0);
  // });
  // describe("grow", function() {

  //   it("should increase the age of the tree by 1 year", function() {
  //     var tree=createTree();
  //     tree.grow();
  //     expect(tree.age).toEqual(1);
  //   });

  //   it("should increase the height of the tree by 10 inches", function() {
  //     var tree=createTree();
  //     tree.grow();
  //     expect(tree.height).toEqual(10);
  //   });
  //   it("should add a random number of oranges if age = FRUIT_BEARING_AGE", function() {
  //     var tree=createTree();
  //     while (tree.age < FRUIT_BEARING_AGE) {
  //       tree.grow();
  //     }
  //     expect(tree.orangeCount).toBeGreaterThan(0);
  //   });
  //   it("should have 0 oranges if age < FRUIT_BEARING_AGE", function() {
  //     var tree=createTree();
  //     while (tree.age < (FRUIT_BEARING_AGE-1)) {
  //       tree.grow();
  //     }
  //     expect(tree.orangeCount).toEqual(0);
  //   });
  // });

  // describe ("die",function() {
  //   it("should be alive when age <= MAX_AGE",function() {
  //     var tree=createTree();
  //     while (tree.age < (MAX_AGE-1)) {
  //       tree.grow();
  //     }
  //     tree.grow();
  //     expect(tree.isAlive).toEqual(true);
  //   });
  //   it("should die when age > MAX_AGE",function() {
  //     var tree=createTree();
  //     while (tree.age < MAX_AGE) {
  //       tree.grow();
  //     }
  //     tree.grow();
  //     expect(tree.isAlive).toEqual(false);
  //   });
  // });

  // describe("dropOrange", function() {
  //   it("should return the orange that is removed from oranges", function() {
  //     var tree=createTree();
  //     while (tree.age< FRUIT_BEARING_AGE) {
  //       tree.grow();
  //     }
  //     expect(tree.dropOrange()).toBeDefined();
  //   });
  // });

  // describe ("pickOrange", function() {
  //   it("should return a orange object", function() {
  //     expect(pickOrange()).toBeDefined();
  //   });
  //   it("should return an orange with a random diameter > 0", function() {
  //     var orange = pickOrange();
  //     expect(orange.diameter).toBeGreaterThan(0);
  //   });
  // });
