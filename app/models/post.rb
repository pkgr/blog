class Post
  extend ActiveModel::Naming
  include ActiveModel::Model
  include ActiveModel::Conversion
  attr_accessor :id, :title, :body, :published_at, :updated_at

  def self.load_from(issue)
    new(
      id: issue[:number],
      title: issue[:title],
      body: issue[:body],
      published_at: issue[:closed_at],
      updated_at: issue[:updated_at]
    )
  end

  def persisted?
    true
  end

  def content
    @content ||= begin
      Rails.cache.fetch(Digest::SHA256.digest(body), race_condition_ttl: 10) do
        Octokit.markdown(body, gfm: true)
      end
    end
  end

  def to_param
    permalink
  end

  def permalink
    [id, title.parameterize].join("-")
  end
end