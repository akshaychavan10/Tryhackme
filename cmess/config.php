<?php                              
                                                                       
$GLOBALS['config'] = array (                                           
  'db' =>                                                              
  array (                                                                      
    'host' => 'localhost',         
    'user' => 'root',              
    'pass' => 'r0otus3rpassw0rd',                                              
    'name' => 'gila',                                                  
  ),                                                                           
  'permissions' =>                                                     
  array (                                                                      
    1 =>                               
    array (                            
      0 => 'admin',                    
      1 => 'admin_user',               
      2 => 'admin_userrole',           
    ),                                 
  ),                                   
  'packages' =>                        
  array (                              
    0 => 'blog',                       
  ),                                   
  'base' => 'http://cmess.thm/gila/',                                          
  'theme' => 'gila-blog',              
  'title' => 'Gila CMS',               
  'slogan' => 'An awesome website!',                                           
  'default-controller' => 'blog',                                              
  'timezone' => 'America/Mexico_City',                                         
  'ssl' => '',                         
  'env' => 'pro',                      
  'check4updates' => 1,                
  'language' => 'en',                  
  'admin_email' => 'andre@cmess.thm',                                          
  'rewrite' => true,   