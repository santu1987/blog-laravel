<?php

use Illuminate\Database\Seeder;

use Illuminate\Database\Eloquent\Model;

use App\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        #Forma 1: Sin factoria
        /*DB::table('users')->insert([
        	'name'  	=> 'Pedrito Perez',
        	'email' 	=> 'pedriot@gmail.com',
        	'password'  => bcrypt('123456'),
        	'type'		=> 'member'
        ]);*/
        #Forma 2: Con factoria
        factory(User::class, 10)->create();
    }
}
