class StaticPages
  class << self
    def matcher
      Regexp.new Dir.glob(Rails.root.join("app", "views", "static_pages",
       "*")).map{|f_name| f_name.split("/").last.split(".").first}.uniq.join("|")
    end
  end
end