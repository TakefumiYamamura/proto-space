module PrototypesHelper
  def show_date(time)
    time.strftime("%b %d")
  end

  def fetch_tag_name(prototype, num)
    @prototype.tags[num].try(:name) || ""
  end
end
