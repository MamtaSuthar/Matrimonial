<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class HeightSeeder extends Seeder
{
   
    public function run()
    {           DB::table('heights')->insert(array (
                    0 => 
                      array (
                             'userheight' => '6',
                     ),
                    1 => 
                      array (
                             'userheight' => '5.9',
                         
                     ),
                     2 => 
                      array (
                             'userheight' => '5.8',
                         
                     ),
                     3 => 
                     array (
                            'userheight' => '5.7',
                    ),
                  4 => 
                     array (
                            'userheight' => '5.6',
                        
                    ),
                    5 => 
                     array (
                            'userheight' => '5.5',
                        
                    ),
                   6=> 
                    array (
                           'userheight' => '5.4',
                   ),
                  7 => 
                    array (
                           'userheight' => '5.3',
                       
                   ),
                   8 => 
                    array (
                           'userheight' => '5.2',
                       
                   ),
                   9 => 
                   array (
                          'userheight' => '5.1',
                  ),
                 10 => 
                   array (
                          'userheight' => '5',
                      
                  ),
                  11 => 
                  array (
                         'userheight' => '4.9',
                 ),
                12 => 
                  array (
                         'userheight' => '4.8',
                     
                 ),
                 13 => 
                  array (
                         'userheight' => '4.7',
                     
                 ),
                 14 => 
                 array (
                        'userheight' => '4.6',
                ),
              15=> 
                 array (
                        'userheight' => '4.5',
                    
                ),
                16 => 
                 array (
                        'userheight' => '4.4',
                    
                ),
               17=> 
                array (
                       'userheight' => '4.3',
               ),
              18 => 
                array (
                       'userheight' => '4.2',
                   
               ),
              19 => 
                array (
                       'userheight' => '4.1',
                   
               ),
               20 => 
               array (
                      'userheight' => '4',
              ),
             21 => 
               array (
                      'userheight' => '3',
                  
              ),
             
                 
                 ));

         
        
    }
}
