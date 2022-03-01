class Corrector
  def correct_name(name)
    max_length(initial_capital?(name))
  end

  def initial_capital?(name)
    name[0] = name[0].upcase
    name
  end

  def max_length(name)
    return name[0..9] if name.length > 10

    name
  end
end
