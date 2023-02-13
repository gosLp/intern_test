import { GraphQLList, GraphQLObjectType, GraphQLSchema, GraphQLString } from 'graphql';
export const BranchType = new GraphQLObjectType({
    name: 'Branch',
    fields: {
        branch: { type: GraphQLString },
        bank: {
            type: new GraphQLObjectType({
                name: 'Bank',
                fields: {
                    name: { type: GraphQLString },
                },
            }),
        },
        ifsc: { type: GraphQLString },
    },
});
const schema = new GraphQLSchema({
    query: new GraphQLObjectType({
        name: 'Query',
        fields: {
            branches: {
                type: new GraphQLList(BranchType),
                resolve: async () => {
                    const result = await prisma.branches.findMany();
                    return result;
                },
            },
        },
    }),
});
