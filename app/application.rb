class Application

  def call(env)
    resp = Rack::Response.new

    num1 = Kernel.rand(1..20)
    num2 = Kernel.rand(1..20)
    num3 = Kernel.rand(1..20)

    resp.write num1
    resp.write num2
    resp.write num3

    if num1 == num2 && num2 == num3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
