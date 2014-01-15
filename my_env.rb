# my_env.rb
class MyEnv
  def call env
	headers = env.collect {|pair| [pair[0], pair[1]]}
    .collect {|pair| pair.join("=>") << "<br>"}
    .sort
    [200, {"Content-Type" => "text/html"}, headers] 
  end
end