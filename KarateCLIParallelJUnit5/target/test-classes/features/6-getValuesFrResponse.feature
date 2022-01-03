Feature: test

@Smoke
  Scenario: filter response
    * def response =
    """
    [ 
        {
            "a": "a",
            "b": "a",
            "c": "a",
        },
        {
            "d": "ab",
            "e": "ab",
            "f": "ab",
        },
        {
            "g": "ac",
            "h": "ac",
            "i": "ac",
        }
    ]
    """
    
    * def filt = function(x){ return x.e == 'ab' }
    * def items = get response[*]
    * def res = karate.filter(items, filt)    
    * print filt
    * print res
    
  
  Scenario: get list of Id from response
      * def response = 
      """
      [
				{ id:"id1",
				name: "name1"
				},
				{ id:"id2",
				name: "name2"
				},
				{ id:"id3",
				name: "name3"
				}
			]
      """

  * def items = get response[*]
  * def ids = $items[*].id   
  * print ids
  
  @Smoke
  Scenario: get list of Id from response 1  
  * def cat = 
  """
  {
    name: 'Billie',
    kittens: [
      { id: 23, name: 'Bob' },
      { id: 42, name: 'Wild' }
    ]
  }
  """
* def kitnums = get cat.kittens[*].id
* print kitnums
* match kitnums == [23, 42]
* def kitnames = get cat $.kittens[*].name
* match kitnames == ['Bob', 'Wild']

* def actual = 23
* match actual == kitnums[0]

# you can do like this instead of above 
* match actual == get[0] cat.kittens[*].id    
      