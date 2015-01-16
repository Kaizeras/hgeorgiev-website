module ApplicationHelper
 

  def coderay(text)
    text.gsub(/\<pre( lang="(.+?)")?\>\<code( lang="(.+?)")?\>(.+?)\<\/code\>\<\/pre\>/m) do
      lang = $4
      text = CGI.unescapeHTML($5).gsub /\<code( lang="(.+?)")?\>|\<\/code\>/, ""
      CodeRay.scan(text, lang).div(:css => :class)
    end
  end
 
  def full_title(page_title)
    base_title = "Hristo Georgiev"
    if page_title.empty?
      base_title
    else
      "#{page_title} • #{base_title}"
    end
  end

end 