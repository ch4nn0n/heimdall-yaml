<?php

use Illuminate\Database\Seeder;
use App\SettingUser;
use App\Setting;
use App\User;
use Symfony\Component\Yaml\Yaml;

class SettingUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = User::find(1);
        $setting = Setting::find(2);
        $user->settings()->save($setting, ['uservalue' => 'backgrounds/background.jpg']);
    }
}
