class Allergies
  ALLERGENS = %w(
  eggs
  peanuts
  shellfish
  strawberries
  tomatoes
  chocolate
  pollen
  cats
  )

  def initialize(score)
    @score = score
  end

  def list
    ALLERGENS.each_with_index
      .select { |allergen, index| allergic_to_index?(index) }
      .map { |allergen, index| allergen }
  end

  def allergic_to?(allergen)
    allergic_to_index?(allergen_index(allergen))
  end

  private

  def allergic_to_index?(index)
    # e.g.
    #   @score 34      100010
    #   index               5 (chocolate)
    #   @score >> index     1
    ((@score >> index) & 1) == 1
  end

  def allergen_index(allergen)
    ALLERGENS.index(allergen)
  end
end