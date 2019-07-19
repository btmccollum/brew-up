# module GraphQL
#   module MutationsHelper
#     def   create_user_mutation(input = {})
#       %(
#         module GraphQL
#           module MutationsHelper
#             def register_user_mutation(input = {})
#               %(
#                 mutation RegisterUser(
#                   $firstName: String!,
#                   $lastName: String!,
#                   $email: String!,
#                   $password: String!,
#                 ) {
#                   registerUser(input: {
#                     firstName:$firstName,
#                     lastName:$lastName,
#                     email:$email,
#                     password:$password,
#                   }) {
#                     user {
#                       id
#                       firstName
#                       lastName
#                       email
#                       success
#                       errors
#                     }
#                   }
#                 }
#               )
#             end
#           end
#         end
#       )