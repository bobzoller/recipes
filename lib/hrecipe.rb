class Hrecipe < Mustache
  self.template_file = File.join(File.dirname(__FILE__), 'hrecipe.mustache')

  def initialize(recipe_id)
    json = JSON.parse(File.read(File.join(File.dirname(__FILE__), '..', "#{recipe_id}.json")))
    json.each {|k, v| self[k.to_sym] = v }
  end

  def format_preptime
    format_time(self[:preptime])
  end

  def format_cooktime
    format_time(self[:cooktime])
  end

  def format_time(time_str)
    parts = time_str.match /^PT(\d+)H(\d+)M$/
    %{#{parts[1]}:#{parts[2]}<span class="value-title" title="#{time_str}"></span>}
  end

end

