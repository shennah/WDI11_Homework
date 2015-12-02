#solution without binary
#
#
# class Allergies
#   ALLERGENS = {
#     128 => 'cats',
#     64 => 'pollen',
#     32 => 'chocolate',
#     16 => 'tomatoes',
#     8 => 'strawberries',
#     4 => 'shellfish',
#     2 => 'peanuts',
#     1 => 'eggs'  
#   }

#   def initialize score
#     @score = score
#   end

#   def list
#     allergies = []
  
#     ALLERGENS.each do |num, allergen|      
#       if @score >= num     
#         allergies.push(allergen)
#         @score -= num
#       end
#     end

#     allergies.reverse
#   end

#   def allergic_to? allergy
#     list.include?( allergy )
#   end

# end



class Allergies
  ALLERGENS = {
    1 => 'eggs',
    2 => 'peanuts',
    4 => 'shellfish',
    8 => 'strawberries',
    16 => 'tomatoes',
    32 => 'chocolate',
    64 => 'pollen',
    128 => 'cats'
  }

  def initialize score
    @score = score
  end

  def list
    allergies = []
    ALLERGENS.each do |bitflag, allergen|
      #(num & num) > 0 - returns true/false, if numbers have 1 on the same spots in binary representation 
      if ( @score & bitflag ) > 0
        allergies << allergen
      end
    end
    allergies
  end

  def allergic_to? allergy
    list.include?( allergy )
  end

end
