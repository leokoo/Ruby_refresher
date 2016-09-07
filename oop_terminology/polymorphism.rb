
class Document

  def initialize
  end
 
  def print
    p "check out how we can raise this argument error"
    raise NotImplementedError, 'You must implement the print method'
  end
end

class XmlDocument < Document
 
  def print
    p 'Print from XmlDocument'
  end
 
end

class HtmlDocument < Document
 
  def print
    p 'Print from HtmlDocument'
  end

end

class AnyDocument < Document

end


XmlDocument.new.print # Print from XmlDocument
HtmlDocument.new.print # Print from HtmlDocument
AnyDocument.new.print
 
