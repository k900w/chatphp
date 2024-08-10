<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: livekit_egress.proto

namespace Livekit;

use UnexpectedValueException;

/**
 * Protobuf type <code>livekit.EgressStatus</code>
 */
class EgressStatus
{
    /**
     * Generated from protobuf enum <code>EGRESS_STARTING = 0;</code>
     */
    const EGRESS_STARTING = 0;
    /**
     * Generated from protobuf enum <code>EGRESS_ACTIVE = 1;</code>
     */
    const EGRESS_ACTIVE = 1;
    /**
     * Generated from protobuf enum <code>EGRESS_ENDING = 2;</code>
     */
    const EGRESS_ENDING = 2;
    /**
     * Generated from protobuf enum <code>EGRESS_COMPLETE = 3;</code>
     */
    const EGRESS_COMPLETE = 3;
    /**
     * Generated from protobuf enum <code>EGRESS_FAILED = 4;</code>
     */
    const EGRESS_FAILED = 4;
    /**
     * Generated from protobuf enum <code>EGRESS_ABORTED = 5;</code>
     */
    const EGRESS_ABORTED = 5;
    /**
     * Generated from protobuf enum <code>EGRESS_LIMIT_REACHED = 6;</code>
     */
    const EGRESS_LIMIT_REACHED = 6;

    private static $valueToName = [
        self::EGRESS_STARTING => 'EGRESS_STARTING',
        self::EGRESS_ACTIVE => 'EGRESS_ACTIVE',
        self::EGRESS_ENDING => 'EGRESS_ENDING',
        self::EGRESS_COMPLETE => 'EGRESS_COMPLETE',
        self::EGRESS_FAILED => 'EGRESS_FAILED',
        self::EGRESS_ABORTED => 'EGRESS_ABORTED',
        self::EGRESS_LIMIT_REACHED => 'EGRESS_LIMIT_REACHED',
    ];

    public static function name($value)
    {
        if (!isset(self::$valueToName[$value])) {
            throw new UnexpectedValueException(sprintf(
                    'Enum %s has no name defined for value %s', __CLASS__, $value));
        }
        return self::$valueToName[$value];
    }


    public static function value($name)
    {
        $const = __CLASS__ . '::' . strtoupper($name);
        if (!defined($const)) {
            throw new UnexpectedValueException(sprintf(
                    'Enum %s has no value defined for name %s', __CLASS__, $name));
        }
        return constant($const);
    }
}
