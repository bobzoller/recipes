class Index < Mustache
  self.template_file = File.join(File.dirname(__FILE__), 'index.mustache')

  def initialize(links)
    super
    self[:links] = links
  end

end

