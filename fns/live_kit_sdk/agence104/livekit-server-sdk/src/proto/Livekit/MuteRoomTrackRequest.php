<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: livekit_room.proto

namespace Livekit;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Generated from protobuf message <code>livekit.MuteRoomTrackRequest</code>
 */
class MuteRoomTrackRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * name of the room
     *
     * Generated from protobuf field <code>string room = 1;</code>
     */
    protected $room = '';
    /**
     * Generated from protobuf field <code>string identity = 2;</code>
     */
    protected $identity = '';
    /**
     * sid of the track to mute
     *
     * Generated from protobuf field <code>string track_sid = 3;</code>
     */
    protected $track_sid = '';
    /**
     * set to true to mute, false to unmute
     *
     * Generated from protobuf field <code>bool muted = 4;</code>
     */
    protected $muted = false;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $room
     *           name of the room
     *     @type string $identity
     *     @type string $track_sid
     *           sid of the track to mute
     *     @type bool $muted
     *           set to true to mute, false to unmute
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\LivekitRoom::initOnce();
        parent::__construct($data);
    }

    /**
     * name of the room
     *
     * Generated from protobuf field <code>string room = 1;</code>
     * @return string
     */
    public function getRoom()
    {
        return $this->room;
    }

    /**
     * name of the room
     *
     * Generated from protobuf field <code>string room = 1;</code>
     * @param string $var
     * @return $this
     */
    public function setRoom($var)
    {
        GPBUtil::checkString($var, True);
        $this->room = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>string identity = 2;</code>
     * @return string
     */
    public function getIdentity()
    {
        return $this->identity;
    }

    /**
     * Generated from protobuf field <code>string identity = 2;</code>
     * @param string $var
     * @return $this
     */
    public function setIdentity($var)
    {
        GPBUtil::checkString($var, True);
        $this->identity = $var;

        return $this;
    }

    /**
     * sid of the track to mute
     *
     * Generated from protobuf field <code>string track_sid = 3;</code>
     * @return string
     */
    public function getTrackSid()
    {
        return $this->track_sid;
    }

    /**
     * sid of the track to mute
     *
     * Generated from protobuf field <code>string track_sid = 3;</code>
     * @param string $var
     * @return $this
     */
    public function setTrackSid($var)
    {
        GPBUtil::checkString($var, True);
        $this->track_sid = $var;

        return $this;
    }

    /**
     * set to true to mute, false to unmute
     *
     * Generated from protobuf field <code>bool muted = 4;</code>
     * @return bool
     */
    public function getMuted()
    {
        return $this->muted;
    }

    /**
     * set to true to mute, false to unmute
     *
     * Generated from protobuf field <code>bool muted = 4;</code>
     * @param bool $var
     * @return $this
     */
    public function setMuted($var)
    {
        GPBUtil::checkBool($var);
        $this->muted = $var;

        return $this;
    }

}

