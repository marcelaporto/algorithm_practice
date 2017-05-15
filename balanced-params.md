# Balanced Params
Done in 45 minutes w/ Skilled.com

## Exercise

"""
input: string, paren hash from opening paren to closing paren
output: boolean which determines if the string contains balanced parentheses

"cafdsafd(dfasfds)d" => True
")(" => False

"[](){}[(())]" => True
"[(])"   => False  
"[({})]" => True
"((()))" => True

parens: hash('(' => ')', '[' => ']', '{' => '}') 

**Logic:**

Input: string and hash
Output: Boolean

1. for each opening, there's a closing
2. order in which parens are opened is opposite of the order in which the parens are closed
3. num(opening parens)  == num(closing parens) 

**keep track of some kind of info as you're going through the string**

array of what's been opened AND what's not been matched _yet_

"""
```param_hash = {'(' => ')', '[' => ']', '{' => '}'}

  def balanced?(string, param_hash)
    open_paren = []
    string.each do |char|
      if balanced_hash.key?(char)
          open_paren << char
      elsif balanced_hash.has_value(char)
          if paren_hash[open_paren[-1]] == char
              open_paren.pop
          end
      end
    end
     return open_paren.empty?
  end
  ```
  
  
  
