<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Http\Request;
use Validator;
use App\Http\Resources\Influencer as InfluencerResource;
use App\Models\Influencer;

class InfluencerController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $influencers = Influencer::all();
       return $this->sendResponse(InfluencerResource::collection($influencers), 'Influencers fetched.');
   }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $input = $request->all();
      $validator = Validator::make($input, [
            'name' => 'required',
            'email' => 'required'
        ]);
        if($validator->fails()){
            return $this->sendError($validator->errors());
        }
        $input['user_id'] = $request->user()->id;
        $influencer = Influencer::create($input);
        return $this->sendResponse(new InfluencerResource($influencer), 'Post created.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
     public function show($id)
     {
        $influencer = Influencer::find($id);
        if (is_null($influencer)) {
            return $this->sendError('Influencer does not exist.');
        }
        return $this->sendResponse(new InfluencerResource($influencer), 'Influencer fetched.');
      }

     /**
      * Update the specified influencer in storage.
      *
      * @param  \Illuminate\Http\Request  $request
      * @param  \App\Influencer  $influencer
      * @return \Illuminate\Http\Response
      */
     public function update(Request $request, Influencer $influencer)
     {
         $input = $request->all();
         $validator = Validator::make($input, [
             'name' => 'required',
             'email' => 'required'
         ]);
         if($validator->fails()){
             return $this->sendError($validator->errors());
         }

         $influencer->name = $input['name'];
         $influencer->status = $input['status'];
         $influencer->phone = $input['phone'];
         $influencer->email = $input['email'];
         $influencer->maritalStatus = $input['maritalStatus'];
         $influencer->gender = $input['gender'];
         $influencer->birthday = $input['birthday'];

         $influencer->save();

         return $this->sendResponse(new InfluencerResource($influencer), 'Influencer updated.');
     }

     /**
      * Remove the specified influencer from storage.
      *
      * @param App\Influencer  $influencer
      * @return \Illuminate\Http\Response
      */
     public function destroy(Influencer $influencer)
     {
       $influencer->delete();
       return $this->sendResponse([], 'Influencer deleted.');
     }
}
