public
liveAccessToken
	self isExpired
		ifTrue: [
			self refreshToken ifNil: [ ZnAuthError signal: 'OAuth 2.0 access token has expired (and missing refresh token)' ].
			self handleTokenRefresh ].
	^ self accessToken