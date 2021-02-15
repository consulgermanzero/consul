require_dependency Rails.root.join("app", "models", "proposal").to_s

class Proposal
  after_create :init_community_topics

  def init_community_topics
    community.init_topics
  end
end