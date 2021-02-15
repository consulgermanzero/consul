require_dependency Rails.root.join("app", "models", "budget", "investment").to_s

class Budget::Investment
  after_create :init_community_topics

  def init_community_topics
    community.init_topics
  end
end