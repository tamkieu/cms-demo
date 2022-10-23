<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Influencer extends Model
{
    use HasFactory;

    /**
     * Attributes that can be mass assigned
     *
     * @var array
     */
    protected $fillable = ['user_id', 'name', 'status', 'phone', 'email', 'maritalStatus', 'gender', 'birthday'];

    /**
     * A influencer is belongs to a user
     *
     * @return Illuminate\Database\Eloquent\Relations\Relation
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
