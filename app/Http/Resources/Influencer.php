<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Influencer extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
      return [
          'id' => $this->id,
          'name' => $this->name,
          'status' => $this->status,
          'phone' => $this->phone,
          'email' => $this->email,
          'maritalStatus' => $this->maritalStatus,
          'gender' => $this->gender,
          'birthday' => $this->birthday,
          'created_at' => (string)$this->created_at,
          'updated_at' => (string)$this->updated_at,
          'user' => $this->user,
      ];
    }
}
