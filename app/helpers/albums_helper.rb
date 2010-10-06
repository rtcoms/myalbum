module AlbumsHelper

	def add_object_link(name, form, object, partial, where)
   	 html = render(:partial => partial, :locals => { :form => form}, :object => object)
    	 link_to_function name, %{
     	 var new_object_id = new Date().getTime() ;
     	 var html = jQuery(#{js html}.replace(/index_to_replace_with_js/g, new_object_id)).hide();
     	 html.appendTo(jQuery("#{where}")).slideDown('slow');
       }
 end
 
  def js(data)
    if data.respond_to? :to_json
      data.to_json
    else
      data.inspect.to_json
    end
  end

end
