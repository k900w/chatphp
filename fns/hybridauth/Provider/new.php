<?php

namespace Hybridauth\Provider;

use Hybridauth\Adapter\OAuth2;
use Hybridauth\Exception\UnexpectedApiResponseException;
use Hybridauth\Data;
use Hybridauth\User;

class WordPress extends OAuth2
{
    protected $apiBaseUrl = 'https://www.shadowtown.club/wp-json/wp/v2/';
    protected $authorizeUrl = 'https://www.shadowtown.club/oauth/authorize';
    protected $accessTokenUrl = 'https://www.shadowtown.club/oauth/token';
    protected $apiDocumentation = 'https://www.shadowtown.club/wp-json/';

    public function getUserProfile()
    {
        $response = $this->apiRequest('users/me');

        $data = new Data\Collection($response);

        if (!$data->exists('id')) {
            throw new UnexpectedApiResponseException('Provider API returned an unexpected response.');
        }

        $userProfile = new User\Profile();

        $userProfile->identifier = $data->get('id');
        $userProfile->displayName = $data->get('name');
        $userProfile->photoURL = $data->get('avatar_urls')['96'];
        $userProfile->profileURL = $data->get('link');
        $userProfile->email = $data->get('email');
        $userProfile->language = $data->get('locale');

        return $userProfile;
    }
}
