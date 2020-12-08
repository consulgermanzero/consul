class WYSIWYGSanitizer
  def allowed_tags
    %w[p ul ol li strong em u s a h2 h3 iframe summary details div img span]
  end

  def allowed_attributes
    %w[href src style data-cssclass open cke_widget_wrapper cke_widget_block cke_widget_MJAccordion cke_widget_wrapper_mj_accordion cke_widget_selected mj_accordion cke_widget_element cke_reset cke_widget_drag_handler_container cke_reset cke_widget_mask]
  end

  def sanitize(html)
    ActionController::Base.helpers.sanitize(html, tags: allowed_tags, attributes: allowed_attributes)
  end
end
