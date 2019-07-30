<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Groups
        if(!$user = User::find(1)) {
            $user = new User;
            $user->username = 'admin';
            $user->email = 'admin@bgl.hk';
            $user->password = bcrypt('admin123'); // TODO: take from yaml
            $user->public_front = '1';
            $user->save();
        } else {
            //$user->save();
        }
    }
}
