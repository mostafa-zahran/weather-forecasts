class KelvinToCelsius
  include Interactor

  before do
    context.fail! if context.kelvin.blank?
  end

  def call
    context.celsius = (context.kelvin - 273.15).to_i
  end
end