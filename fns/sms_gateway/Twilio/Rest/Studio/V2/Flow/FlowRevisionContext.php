<?php

/**
 * This code was generated by
 * ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
 *  |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
 *  |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
 *
 * Twilio - Studio
 * This is the public Twilio REST API.
 *
 * NOTE: This class is auto generated by OpenAPI Generator.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


namespace Twilio\Rest\Studio\V2\Flow;

use Twilio\Exceptions\TwilioException;
use Twilio\Version;
use Twilio\InstanceContext;


class FlowRevisionContext extends InstanceContext
    {
    /**
     * Initialize the FlowRevisionContext
     *
     * @param Version $version Version that contains the resource
     * @param string $sid The SID of the Flow resource to fetch.
     * @param string $revision Specific Revision number or can be `LatestPublished` and `LatestRevision`.
     */
    public function __construct(
        Version $version,
        $sid,
        $revision
    ) {
        parent::__construct($version);

        // Path Solution
        $this->solution = [
        'sid' =>
            $sid,
        'revision' =>
            $revision,
        ];

        $this->uri = '/Flows/' . \rawurlencode($sid)
        .'/Revisions/' . \rawurlencode($revision)
        .'';
    }

    /**
     * Fetch the FlowRevisionInstance
     *
     * @return FlowRevisionInstance Fetched FlowRevisionInstance
     * @throws TwilioException When an HTTP error occurs.
     */
    public function fetch(): FlowRevisionInstance
    {

        $payload = $this->version->fetch('GET', $this->uri);

        return new FlowRevisionInstance(
            $this->version,
            $payload,
            $this->solution['sid'],
            $this->solution['revision']
        );
    }


    /**
     * Provide a friendly representation
     *
     * @return string Machine friendly representation
     */
    public function __toString(): string
    {
        $context = [];
        foreach ($this->solution as $key => $value) {
            $context[] = "$key=$value";
        }
        return '[Twilio.Studio.V2.FlowRevisionContext ' . \implode(' ', $context) . ']';
    }
}