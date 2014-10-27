class Index < Mustache
  self.template_file = File.join(File.dirname(__FILE__), 'index.mustache')

  def initialize(links)
    self[:links] = links
  end

end

