import * as functions from "firebase-functions";

export const testOnCall = functions.https
	.onCall((data, context) => {
		console.log(data)

		return null
	})

export const testOnUpdate = functions.firestore
	.document('rooms/{id}')
	.onUpdate((change, context) => {
		console.log(change.after.data())

		return null
	})

export const onRegister = functions.auth
	.user()
	.onCreate((user, context) => {
		console.log(user)

		return null
	})
