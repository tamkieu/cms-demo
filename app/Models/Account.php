<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    use HasFactory;

    /**
     * Attributes that can be mass assigned
     *
     * @var array
     */
    protected $fillable = ['name', 'email', 'role'];

    /**
     * A influencer is belongs to a user
     *
     * @return Illuminate\Database\Eloquent\Relations\Relation
     */
    public function user()
    {
        return $this->belongsTo(Account::class);
    }
}
