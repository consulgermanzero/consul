require_dependency Rails.root.join("app", "models", "community").to_s

class Community

  PREDEFINED_TOPICS = [
    {title: I18n.t("topics_predefined.topic1"), description: I18n.t("topics_predefined.description1")},
    {title: I18n.t("topics_predefined.topic2"), description: I18n.t("topics_predefined.description2")},
    {title: I18n.t("topics_predefined.topic3"), description: I18n.t("topics_predefined.description3")},
  ]

  def init_topics
    user = (self.proposal || self.investment).author

    PREDEFINED_TOPICS.each do |t|
      topics.create(title: t[:title], description: t[:description], author: user)
    end
  end
end