class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # タイヤはリムの回りを囲むので、直径を計算するためには2倍する
    ratio * (rim + (tire * 2))
  end
end
