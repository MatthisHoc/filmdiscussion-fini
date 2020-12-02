<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

use App\Models\User;
use App\Models\Post;

class ReceptionCommentaire extends Mailable
{
    use Queueable, SerializesModels;

    private $post;
    private $user;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(User $user, Post $post)
    {
        $this->user = $user;
        $this->post = $post;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from("filmsdiscussion@filmsdiscussions.com")->
        view("emails.receptionCommentaire")->with(["user"=>$this->user, "post"=>$this->post]);
    }
}
