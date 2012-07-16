module Admin::ProductsHelper

  #----------------------------------------------------------------------------
  def link_to_product_edit(product)
    link_to(t(:edit), edit_admin_product_path(product),
      :method => :get,
      :with   => "{ view: '#{@view}', previous: crm.find_form('edit_product') }",
      :remote => true
    )
  end

  #----------------------------------------------------------------------------
  def link_to_product_delete(product)
    link_to(t(:delete) + "!", admin_product_path(product),
      :method => :delete,
      :with   => "{ view: '#{@view}' }",
      :before => visual_effect(:highlight, dom_id(product), :startcolor => "#ffe4e1"),
      :remote => true
    )
  end

  #----------------------------------------------------------------------------
  def link_to_product_confirm(product)
    link_to(t(:delete) + "!", confirm_admin_product_path(product),
      :with   => "{ view: '#{@view}' }",
      :before => visual_effect(:highlight, dom_id(product), :startcolor => "#ffe4e1"),
      :remote => true
    )
  end

end
