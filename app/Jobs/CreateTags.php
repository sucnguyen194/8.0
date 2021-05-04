<?php

namespace App\Jobs;

use App\Models\Tags;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Str;

class CreateTags implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $post;
    protected $type;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($post, $type = null)
    {
        $this->post = $post;
        $this->type = $type;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $post = $this->post;
        $type = $this->type ?? $post->type;
        $post->tags()->delete();

        if($post->tags){
            foreach(explode(',', $post->tags) as $item){
                $slug = Str::slug($item);
                if(!Tags::whereAlias($slug)->whereTypeId($post->id)->whereType($type)->count()){
                    $tag = new Tags();
                    $tag->name = $item;
                    $tag->alias = $slug;
                    $tag->type = $type;
                    $tag->type_id = $post->id;
                    $tag->lang = $post->lang;
                    $tag->save();
                }
            }
        }
    }
}
