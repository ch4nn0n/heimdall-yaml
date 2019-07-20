<?php

use Illuminate\Database\Seeder;
use App\Item;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Symfony\Component\Yaml\Yaml;

class ItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('items')->delete();
        $data = File::get("/config/data.yaml");
        $config = Yaml::parse($data)['config'];
        $items = $config['items'];

        foreach ($items as $obj) {
            Item::create(array(
                'title' => $obj['title'],
                'url' => $obj['url'] ?? null,
                'pinned' => $obj['pinned'] ?? null,
                'colour' => $obj['colour'] ?? null,
            ));
        }
    }
}
